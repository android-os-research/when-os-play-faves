.class Lcom/android/server/power/hint/HintManagerService$Injector;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .registers 1

    .line 93
    new-instance p0, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;-><init>()V

    return-object p0
.end method
