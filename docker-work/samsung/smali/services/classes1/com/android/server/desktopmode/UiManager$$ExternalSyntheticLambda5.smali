.class public final synthetic Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/desktopmode/UiManager;

    iput p2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/desktopmode/UiManager;

    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;->f$2:I

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->$r8$lambda$h9Puf9kcVtXs6S3HOaqf0X2q2-s(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method
