.class public Lcom/android/server/pm/PersonaManagerService$7;
.super Landroid/database/ContentObserver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 3354
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    if-nez p3, :cond_8

    .line 3357
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_8
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    return-void

    .line 3360
    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/knox/KnoxAnalyticsContainer;->requestSendSnapshotLog(I)V

    return-void
.end method
