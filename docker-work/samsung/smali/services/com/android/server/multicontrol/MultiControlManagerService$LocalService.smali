.class public final Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;
.super Lcom/samsung/android/multicontrol/MultiControlManagerInternal;
.source "MultiControlManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/multicontrol/MultiControlManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MultiControlManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/android/server/multicontrol/MultiControlManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    return-void
.end method


# virtual methods
.method public isMultiControlEnabled()Z
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/view/IInputFilter;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
