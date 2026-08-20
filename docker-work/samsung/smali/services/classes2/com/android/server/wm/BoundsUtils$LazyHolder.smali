.class public Lcom/android/server/wm/BoundsUtils$LazyHolder;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static sBoundsUtils:Lcom/android/server/wm/BoundsUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Lcom/android/server/wm/BoundsUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/BoundsUtils;-><init>(Lcom/android/server/wm/BoundsUtils-IA;)V

    sput-object v0, Lcom/android/server/wm/BoundsUtils$LazyHolder;->sBoundsUtils:Lcom/android/server/wm/BoundsUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
