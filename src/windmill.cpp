#include "windmill.hpp"
#include <stdlib.h>
#include <time.h>

namespace WINDMILL
{
    WindMill::WindMill(double time)//�糵������ʼ�� 
    {
        cnt = 0;
        //��������ʼ�� 
        direct = false;
        start_time = time;
        //���ô����ʱ��������ǿ�ʼʱ�� 
        A = 0.785;
        w = 1.884; 
        fai = 1.65;
        A0 = 1.305;  
        now_angle = 0.0;
        //�Ƕȳ�ʼ�� 
        std::srand((unsigned)std::time(NULL));
        //������������� 
        int x = rand() % 200 + 400;
        //�����ֵx�ӡ�400��600�� 
        int y = rand() % 100 + 420;
        //�����ֵx�ӡ�420��520�� 
        R_center = cv::Point2i(x, y);
        //��������Ϊ�����ĵ���� 
    }

    void WindMill::drawR(cv::Mat &img, const cv::Point2i &center) //���ֻ��ƺ���
    {
        cv::putText(img, "R", cv::Point2i(center.x - 5, center.y + 5), cv::FONT_HERSHEY_COMPLEX, 0.7, cv::Scalar(0, 0, 255), 2);
        //���ֻ��ƺ��������ͼ��Ҫ���Ƶ��������ݣ��ַ�������Ҫ���Ƶ�λ�ã��ַ������½ǣ������壨fontFace������С������fontScale������ɫ��������ϸ�� 
    }

    void WindMill::drawHitFan(cv::Mat &img, const cv::Point2i &center, double angle)
    {
        cv::Point2i mid1 = calPoint(center, angle, 40);
        // ����center�㡢�Ƕȡ����㲢����һ���� 
        cv::Point2i mid2 = calPoint(center, angle, 150);
        cv::Point2i mid3 = calPoint(center, angle, 190);
        cv::line(img, mid1, mid2, cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid2, angle + 90, 30), calPoint(mid2, angle - 90, 30), cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid3, angle + 90, 30), calPoint(mid3, angle - 90, 30), cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid2, angle + 90, 30), calPoint(mid3, angle + 90, 30), cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid2, angle - 90, 30), calPoint(mid3, angle - 90, 30), cv::Scalar(0, 0, 255), 8);
    }

    void WindMill::drawOtherFan(cv::Mat &img, const cv::Point2i &center, double angle)
    {
        cv::Point2i mid1 = calPoint(center, angle, 40);
        cv::Point2i mid2 = calPoint(center, angle, 150);
        cv::Point2i mid3 = calPoint(center, angle, 190);
        cv::Point2i mid4 = calPoint(center, angle, 200);
        cv::line(img, mid1, mid2, cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid1, angle + 90, 10), calPoint(mid1, angle - 90, 10), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle + 90, 40), calPoint(mid1, angle + 90, 10), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle + 90, 40), calPoint(mid4, angle + 90, 40), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid4, angle + 90, 40), calPoint(mid4, angle - 90, 40), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid4, angle - 90, 40), calPoint(mid2, angle - 90, 40), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle - 90, 40), calPoint(mid1, angle - 90, 10), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle + 90, 30), calPoint(mid2, angle - 90, 30), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid3, angle + 90, 30), calPoint(mid3, angle - 90, 30), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle + 90, 30), calPoint(mid3, angle + 90, 30), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle - 90, 30), calPoint(mid3, angle - 90, 30), cv::Scalar(0, 0, 255), 3);
    }

    cv::Mat WindMill::getMat(double now_time)
    {
        cv::Mat windmill = cv::Mat(720, 1080, CV_8UC3, cv::Scalar(0, 0, 0));
        //������Ϊwindmill�Ŀ�ͼ�����,ͼ���720����1080��8λ�޷�����������ͨ����ɫͼ��ÿ������ռ3���ֽڣ���������1�ֽڣ� ���ú�ɫ��ʼ�����ͼ�����
		//cv::Scalar �е����� 0 �ֱ��Ӧ BGR����ɫ����ɫ����ɫ��ͨ����ֵ 
        cnt++;
        //counter++
        if (R_center.y > 460)
            direct = false;
        if (R_center.y < 260)
            direct = true;
        if (direct && cnt % 50 < 5)
        {
            R_center.y += 1;
            R_center.x += 1;
        }
        if (!direct && cnt % 50 < 5)
        {
            R_center.y -= 1;
            R_center.x -= 1;
        }
        //avoid hitting a wall
        unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::default_random_engine gen(seed);
        std::normal_distribution<double> noise(0, 0.2);
        now_angle = SumAngle(0.0, start_time, now_time - start_time) + noise(gen);
        drawR(windmill, R_center);
        drawHitFan(windmill, R_center, now_angle);
        for (int i = 1; i < 5; i++)
        {
            drawOtherFan(windmill, R_center, now_angle + 72 * i);
        }

        return windmill;
    }
}
