.class Lcom/android/internal/telephony/CmcCallTracker$1;
.super Landroid/database/ContentObserver;
.source "CmcCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CmcCallTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CmcCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CmcCallTracker;Landroid/os/Handler;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker$1;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 3

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker$1;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const-string v0, "onChange"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$1;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$mcheckMdecEnabled(Lcom/android/internal/telephony/CmcCallTracker;)V

    return-void
.end method
