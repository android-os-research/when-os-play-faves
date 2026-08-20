.class public Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerDisplayIdChangedArgs"
.end annotation


# instance fields
.field public final mPointerDisplayId:I

.field public final mXPosition:F

.field public final mYPosition:F


# direct methods
.method public constructor <init>(IFF)V
    .registers 4

    .line 5033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5034
    iput p1, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mPointerDisplayId:I

    .line 5035
    iput p2, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mXPosition:F

    .line 5036
    iput p3, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mYPosition:F

    return-void
.end method
