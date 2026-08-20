.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverTestModeChanged(IZ)V
    .registers 11

    .line 181
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmSystemReady(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1f

    .line 183
    new-instance p1, Lcom/samsung/android/cover/CoverState;

    const/4 v2, 0x1

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZ)V

    .line 185
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {p0, p2, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$mnotifySmartCoverAttachStateChangedInternal(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_26

    .line 187
    :cond_1f
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$mupdateCoverAttachState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    :cond_26
    :goto_26
    return-void
.end method
