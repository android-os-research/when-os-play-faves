.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZZLandroid/util/ArraySet;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/om/OverlayManagerService;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$4:Z

    iput-object p6, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$5:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$4:Z

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$5:Landroid/util/ArraySet;

    invoke-static/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerService;->$r8$lambda$Xv1bUWs7FHmMOTneiKFSCkY5YGo(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZZLandroid/util/ArraySet;)V

    return-void
.end method
