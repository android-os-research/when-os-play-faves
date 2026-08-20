.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "CoverManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
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

    .line 136
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .registers 6

    .line 139
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayFoldChanged: displayId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", folded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_43

    const/4 p1, 0x1

    if-eqz p2, :cond_3a

    .line 142
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$mgetCoverSwitchStateFromInputManager(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)I

    move-result p0

    if-eq p0, p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    goto :goto_43

    .line 144
    :cond_3a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    :cond_43
    :goto_43
    return-void
.end method
