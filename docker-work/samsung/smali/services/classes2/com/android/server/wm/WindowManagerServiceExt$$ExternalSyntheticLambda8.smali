.class public final synthetic Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda8;->f$0:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda8;->f$0:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/wm/WindowManagerServiceExt;->$r8$lambda$zum27viCbGmKtg4nRL7xBf-xW5A(Landroid/media/AudioManager;Ljava/lang/String;)V

    return-void
.end method
