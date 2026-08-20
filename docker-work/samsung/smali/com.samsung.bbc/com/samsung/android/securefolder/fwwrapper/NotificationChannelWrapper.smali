.class public Lcom/samsung/android/securefolder/fwwrapper/NotificationChannelWrapper;
.super Ljava/lang/Object;
.source "NotificationChannelWrapper.java"


# static fields
.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"


# instance fields
.field private mChannel:Landroid/app/NotificationChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/NotificationChannel;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/securefolder/fwwrapper/NotificationChannelWrapper;->mChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method public static canShowBadge(Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .registers 1

    .line 28
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result p0

    return p0
.end method

.method public static getChannel(Landroid/service/notification/NotificationListenerService$Ranking;)Lcom/samsung/android/securefolder/fwwrapper/NotificationChannelWrapper;
    .registers 2

    .line 24
    new-instance v0, Lcom/samsung/android/securefolder/fwwrapper/NotificationChannelWrapper;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/securefolder/fwwrapper/NotificationChannelWrapper;-><init>(Landroid/app/NotificationChannel;)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/NotificationChannelWrapper;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
