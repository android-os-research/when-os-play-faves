.class Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;
.super Landroid/database/ContentObserver;
.source "SmsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSettingObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsConfig;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SmsConfig;Landroid/os/Handler;)V
    .registers 3

    .line 249
    iput-object p1, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    .line 250
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 255
    iget-object p1, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object p1, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    iget-object p1, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
