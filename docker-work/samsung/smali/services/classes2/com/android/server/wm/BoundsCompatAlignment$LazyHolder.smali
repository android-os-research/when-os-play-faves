.class public Lcom/android/server/wm/BoundsCompatAlignment$LazyHolder;
.super Ljava/lang/Object;
.source "BoundsCompatAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sCenterAlignment:Lcom/android/server/wm/BoundsCompatAlignment;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/android/server/wm/BoundsCompatAlignment;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/android/server/wm/BoundsCompatAlignment;-><init>(I)V

    sput-object v0, Lcom/android/server/wm/BoundsCompatAlignment$LazyHolder;->sCenterAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
