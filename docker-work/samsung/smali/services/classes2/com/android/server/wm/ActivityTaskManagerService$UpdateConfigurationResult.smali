.class public final Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;
.super Ljava/lang/Object;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateConfigurationResult"
.end annotation


# instance fields
.field public activityRelaunched:Z

.field public changes:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 599
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 600
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    return-void
.end method
