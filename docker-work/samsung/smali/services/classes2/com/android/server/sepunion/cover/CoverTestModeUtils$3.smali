.class public Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;
.super Landroid/database/ContentObserver;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V
    .registers 3

    .line 69
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->-$$Nest$mgetTestVisibleRectFromSetting(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->-$$Nest$sfputsCurrentTestVisibleRect(Landroid/graphics/Rect;)V

    return-void
.end method
