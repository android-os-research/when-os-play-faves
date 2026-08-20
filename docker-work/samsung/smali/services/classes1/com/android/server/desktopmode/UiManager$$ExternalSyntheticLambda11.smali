.class public final synthetic Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/desktopmode/UiManager;

    iput p2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/desktopmode/UiManager;

    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;->f$1:I

    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/desktopmode/UiManager;->$r8$lambda$yVV0TMepI7AWlTpJH-wv5nUBa-8(Lcom/android/server/desktopmode/UiManager;II)V

    return-void
.end method
