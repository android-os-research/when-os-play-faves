.class public final synthetic Lcom/android/server/ssrm/common/callback/fold/LidStateEG$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ssrm/common/callback/fold/LidStateEG;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ssrm/common/callback/fold/LidStateEG;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ssrm/common/callback/fold/LidStateEG$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ssrm/common/callback/fold/LidStateEG;

    return-void
.end method


# virtual methods
.method public final onLidStateChanged(JI)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/ssrm/common/callback/fold/LidStateEG$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ssrm/common/callback/fold/LidStateEG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;->lambda$new$0$com-android-server-ssrm-common-callback-fold-LidStateEG(JI)V

    return-void
.end method
