.class public Lcom/android/server/DssController$PairConfiguration;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairConfiguration"
.end annotation


# instance fields
.field public mAppGlobal:Landroid/graphics/Rect;

.field public mAppOverride:Landroid/graphics/Rect;

.field public mBound:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/server/DssController$PairConfiguration;->mAppGlobal:Landroid/graphics/Rect;

    .line 109
    iput-object p2, p0, Lcom/android/server/DssController$PairConfiguration;->mAppOverride:Landroid/graphics/Rect;

    .line 110
    iput-object p3, p0, Lcom/android/server/DssController$PairConfiguration;->mBound:Ljava/util/function/Consumer;

    return-void
.end method
