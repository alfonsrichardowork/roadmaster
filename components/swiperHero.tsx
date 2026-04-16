"use client"

import React from 'react';
import { Swiper, SwiperSlide } from 'swiper/react';

// @ts-ignore
import 'swiper/css';
// @ts-ignore
import 'swiper/css/navigation';
// @ts-ignore
import 'swiper/css/pagination';

import '@/app/style/swiperstyles.css';

import { Autoplay, Navigation, Pagination } from 'swiper/modules';
import { hero } from '@prisma/client';

type PropType = {
  slides: hero[];
};

const SwiperHero: React.FC<PropType> = (props) => {
    const { slides } = props;
    return (
        slides.length > 0 &&
        <Swiper 
            navigation={true} 
            loop={true}
            pagination={{
                clickable: true,
            }} 
            autoplay={{
                delay: 2500,
            }}
            modules={[Autoplay, Navigation, Pagination]} 
            className="mySwiper"
            style={{
                "--swiper-navigation-color": "#ffffff",
                "--swiper-navigation-sides-offset": "30px",
                "--swiper-navigation-size": "25px",
                "--swiper-pagination-color": "#ffffff"
            } as React.CSSProperties}
        >
            {slides.map((val, index) => 
                <SwiperSlide key={index}>
                    <img
                        className="w-full h-full object-cover"
                        src={val.hero_img}
                        alt={`Hero Image - ${index}`}
                        width={1920}
                        height={1080}
                    />
                    <div className="absolute inset-0 bg-foreground/30"></div>
                </SwiperSlide>
            )}
        </Swiper>
    );
}

export default SwiperHero;
