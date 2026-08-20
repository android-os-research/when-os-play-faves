.class public Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventBox"
.end annotation


# instance fields
.field public eventData:Landroid/os/Bundle;

.field public eventId:I

.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;ILandroid/os/Bundle;)V
    .registers 4

    .line 64
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;->eventId:I

    .line 66
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;->eventData:Landroid/os/Bundle;

    return-void
.end method
