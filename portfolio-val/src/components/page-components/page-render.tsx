import CardCarouselSection from "@/components/page-components/card-carousel-section";
import InfoCardSection from "@/components/page-components/info-card-section";
import InfoSection from "@/components/page-components/info-section";
import SocialSection from "@/components/page-components/social-section";
import WorkSection from "@/components/page-components/work-section";
import WorkTimelineSection from "@/components/page-components/work-timeline-section";
import { type Pages } from "@/content/pages.val";

export default function PageRender({
  data,
}: {
  data: Pages[number]["pageElements"];
}) {
  return (
    <>
      {data.map((element, i) => {
        switch (element.type) {
          case "infoCards":
            return <InfoCardSection data={element} key={i} />;
          case "info":
            return <InfoSection data={element} key={i} />;
          case "workTimeline":
            return <WorkTimelineSection data={element} key={i} />;
          case "work":
            return <WorkSection data={element} key={i} />;
          case "social":
            return <SocialSection data={element} key={i} />;
          case "cardCarousel":
            return <CardCarouselSection data={element} key={i} />;
        }
      })}
    </>
  );
}
