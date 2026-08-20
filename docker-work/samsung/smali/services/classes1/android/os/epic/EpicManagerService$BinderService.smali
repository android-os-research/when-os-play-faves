.class public final Landroid/os/epic/EpicManagerService$BinderService;
.super Landroid/os/epic/IEpicManager$Stub;
.source "EpicManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/epic/EpicManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/os/epic/EpicManagerService;


# direct methods
.method public constructor <init>(Landroid/os/epic/EpicManagerService;)V
    .registers 2

    .line 108
    iput-object p1, p0, Landroid/os/epic/EpicManagerService$BinderService;->this$0:Landroid/os/epic/EpicManagerService;

    invoke-direct {p0}, Landroid/os/epic/IEpicManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/epic/EpicManagerService;Landroid/os/epic/EpicManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/epic/EpicManagerService$BinderService;-><init>(Landroid/os/epic/EpicManagerService;)V

    return-void
.end method


# virtual methods
.method public Create(I)Landroid/os/epic/IEpicObject;
    .registers 2

    .line 113
    new-instance p0, Landroid/os/epic/EpicObject;

    invoke-direct {p0, p1}, Landroid/os/epic/EpicObject;-><init>(I)V

    return-object p0
.end method

.method public Creates([I)Landroid/os/epic/IEpicObject;
    .registers 2

    .line 119
    new-instance p0, Landroid/os/epic/EpicObject;

    invoke-direct {p0, p1}, Landroid/os/epic/EpicObject;-><init>([I)V

    return-object p0
.end method
