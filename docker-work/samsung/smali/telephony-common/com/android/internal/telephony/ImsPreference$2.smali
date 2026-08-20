.class Lcom/android/internal/telephony/ImsPreference$2;
.super Landroid/database/ContentObserver;
.source "ImsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsPreference;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsPreference;Landroid/os/Handler;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/ImsPreference$2;->this$0:Lcom/android/internal/telephony/ImsPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 113
    iget-object p1, p0, Lcom/android/internal/telephony/ImsPreference$2;->this$0:Lcom/android/internal/telephony/ImsPreference;

    const-string p2, "ImsSimMobility changed"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/ImsPreference;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsPreference;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/android/internal/telephony/ImsPreference$2;->this$0:Lcom/android/internal/telephony/ImsPreference;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference$2;->this$0:Lcom/android/internal/telephony/ImsPreference;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
