.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;
.super Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;
.source "RemoteInjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V
    .registers 2

    .line 891
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    return-void
.end method


# virtual methods
.method public isRemoteControlDisabled(I)Z
    .registers 2

    .line 894
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabled(I)Z

    move-result p0

    return p0
.end method
