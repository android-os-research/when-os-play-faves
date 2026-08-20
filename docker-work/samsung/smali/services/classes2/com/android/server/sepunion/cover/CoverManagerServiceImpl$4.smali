.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 160
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    const/4 p0, -0x4

    .line 163
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 p0, 0x0

    .line 164
    invoke-static {p0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    return-void
.end method
