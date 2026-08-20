.class public Lcom/sec/ims/presence/PresenceInfo$Builder;
.super Ljava/lang/Object;
.source "PresenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/PresenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field activities:Ljava/lang/String;

.field avatar_uri:Ljava/lang/String;

.field birthday:Ljava/lang/String;

.field cyworld:Ljava/lang/String;

.field display_name:Ljava/lang/String;

.field email:Ljava/lang/String;

.field expire_time:J

.field facebook:Ljava/lang/String;

.field homepage:Ljava/lang/String;

.field hyper:I

.field mood_text:Ljava/lang/String;

.field phoneId:I

.field phone_number:Ljava/lang/String;

.field pidf:Ljava/lang/String;

.field state:I

.field tel_uri:Ljava/lang/String;

.field timestamp:J

.field twitter:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activities(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "activities"    # Ljava/lang/String;

    .line 579
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->activities:Ljava/lang/String;

    .line 580
    return-object p0
.end method

.method public avatar_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "avatar_uri"    # Ljava/lang/String;

    .line 514
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->avatar_uri:Ljava/lang/String;

    .line 515
    return-object p0
.end method

.method public birthday(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "birthday"    # Ljava/lang/String;

    .line 554
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->birthday:Ljava/lang/String;

    .line 555
    return-object p0
.end method

.method public build()Lcom/sec/ims/presence/PresenceInfo;
    .registers 2

    .line 599
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v0, p0}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Lcom/sec/ims/presence/PresenceInfo$Builder;)V

    return-object v0
.end method

.method public cyworld(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "cyworld"    # Ljava/lang/String;

    .line 564
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->cyworld:Ljava/lang/String;

    .line 565
    return-object p0
.end method

.method public display_name(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "display_name"    # Ljava/lang/String;

    .line 529
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->display_name:Ljava/lang/String;

    .line 530
    return-object p0
.end method

.method public email(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .line 549
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->email:Ljava/lang/String;

    .line 550
    return-object p0
.end method

.method public expire_time(J)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 3
    .param p1, "expire_time"    # J

    .line 584
    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->expire_time:J

    .line 585
    return-object p0
.end method

.method public facebook(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "facebook"    # Ljava/lang/String;

    .line 574
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->facebook:Ljava/lang/String;

    .line 575
    return-object p0
.end method

.method public homepage(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "homepage"    # Ljava/lang/String;

    .line 544
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->homepage:Ljava/lang/String;

    .line 545
    return-object p0
.end method

.method public hyper(I)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "hyper"    # I

    .line 534
    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->hyper:I

    .line 535
    return-object p0
.end method

.method public mood_text(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "mood_text"    # Ljava/lang/String;

    .line 539
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->mood_text:Ljava/lang/String;

    .line 540
    return-object p0
.end method

.method public phoneId(I)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "phoneId"    # I

    .line 594
    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->phoneId:I

    .line 595
    return-object p0
.end method

.method public phone_number(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "phone_number"    # Ljava/lang/String;

    .line 559
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->phone_number:Ljava/lang/String;

    .line 560
    return-object p0
.end method

.method public pidf(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "pidf"    # Ljava/lang/String;

    .line 589
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->pidf:Ljava/lang/String;

    .line 590
    return-object p0
.end method

.method public state(I)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 519
    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->state:I

    .line 520
    return-object p0
.end method

.method public tel_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "telUri"    # Ljava/lang/String;

    .line 504
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri:Ljava/lang/String;

    .line 505
    return-object p0
.end method

.method public timestamp(J)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 3
    .param p1, "timestamp"    # J

    .line 524
    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp:J

    .line 525
    return-object p0
.end method

.method public twitter(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "twitter"    # Ljava/lang/String;

    .line 569
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->twitter:Ljava/lang/String;

    .line 570
    return-object p0
.end method

.method public uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 509
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri:Ljava/lang/String;

    .line 510
    return-object p0
.end method
