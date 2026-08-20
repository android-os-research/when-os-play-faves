.class public Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
.super Ljava/lang/Object;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AppDirectedSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppMessageInfo"
.end annotation


# instance fields
.field private blacklist mAppDirSmsStatus:I

.field private blacklist mAppPrefix:Ljava/lang/String;

.field private blacklist mComponentname:Landroid/content/ComponentName;

.field private blacklist mParameter:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist checkifcomponentpresent()Z
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public blacklist getAppPrefix()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getappMsgBody()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getappdirsmsstatus()Z
    .registers 3

    .line 49
    iget p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method public blacklist getcomponentnameDirectedSms()Landroid/content/ComponentName;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist setNoRegisteredComponent()V
    .registers 2

    const/4 v0, 0x2

    .line 60
    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    return-void
.end method

.method public blacklist setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 54
    iput p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    .line 55
    iput-object p2, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    return-void
.end method
