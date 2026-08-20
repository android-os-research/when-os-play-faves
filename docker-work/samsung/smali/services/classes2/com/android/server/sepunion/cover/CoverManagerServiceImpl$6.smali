.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initialize()V
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

    .line 213
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 216
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$mupdateCoverAttachState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method
