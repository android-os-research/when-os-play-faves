.class public final Lcom/mediatek/media/MediaRecorderEx$HDRecordMode;
.super Ljava/lang/Object;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/media/MediaRecorderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HDRecordMode"
.end annotation


# static fields
.field public static final blacklist INDOOR:I = 0x1

.field public static final blacklist NORMAL:I = 0x0

.field public static final blacklist OUTDOOR:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/media/MediaRecorderEx;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/media/MediaRecorderEx;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/media/MediaRecorderEx;

    .line 111
    iput-object p1, p0, Lcom/mediatek/media/MediaRecorderEx$HDRecordMode;->this$0:Lcom/mediatek/media/MediaRecorderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
