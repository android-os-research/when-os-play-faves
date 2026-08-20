.class Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;
.super Ljava/lang/Object;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AppDirectedSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchInfo"
.end annotation


# instance fields
.field public blacklist mAppPrefix:Ljava/lang/String;

.field public blacklist mComponentName:Landroid/content/ComponentName;

.field public blacklist mParameter:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    .line 83
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;-><init>()V

    return-void
.end method
