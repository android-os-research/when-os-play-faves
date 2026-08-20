.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;
.super Landroid/os/Handler;
.source "SemMobileWipsNetdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method
