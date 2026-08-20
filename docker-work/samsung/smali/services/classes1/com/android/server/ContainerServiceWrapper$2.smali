.class public Lcom/android/server/ContainerServiceWrapper$2;
.super Landroid/os/Handler;
.source "ContainerServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ContainerServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ContainerServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/ContainerServiceWrapper;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper$2;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_f

    .line 104
    :cond_6
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper$2;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaServiceProxy;->handleServiceDied(Lcom/android/server/ContainerServiceInfo;)V

    :goto_f
    return-void
.end method
