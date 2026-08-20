.class public Lcom/android/server/wm/BoundsCompatStatusLogger$LazyHolder;
.super Ljava/lang/Object;
.source "BoundsCompatStatusLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatStatusLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sLogger:Lcom/android/server/wm/BoundsCompatStatusLogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/android/server/wm/BoundsCompatStatusLogger;

    invoke-direct {v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;-><init>()V

    sput-object v0, Lcom/android/server/wm/BoundsCompatStatusLogger$LazyHolder;->sLogger:Lcom/android/server/wm/BoundsCompatStatusLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
