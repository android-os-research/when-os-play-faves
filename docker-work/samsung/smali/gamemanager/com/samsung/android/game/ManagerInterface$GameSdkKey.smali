.class public Lcom/samsung/android/game/ManagerInterface$GameSdkKey;
.super Ljava/lang/Object;
.source "ManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/ManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameSdkKey"
.end annotation


# static fields
.field public static final CPU_MIN_PERCENT:Ljava/lang/String; = "cpu_min_percent"

.field public static final GPU_MIN_PERCENT:Ljava/lang/String; = "gpu_min_percent"

.field public static final IS_SUPPORTED:Ljava/lang/String; = "is_supported"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
