.class Lcom/android/internal/telephony/ims/ImsServiceController$3;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$3;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMaximumDelay()J
    .registers 3

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public blacklist getStartDelay()J
    .registers 3

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method
