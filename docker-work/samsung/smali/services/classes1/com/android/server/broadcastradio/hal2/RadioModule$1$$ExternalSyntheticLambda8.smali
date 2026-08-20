.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field public final synthetic f$1:Landroid/hardware/broadcastradio/V2_0/ProgramInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-static {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$lambda$TBzfcStdiv-sNQfcjSu20wx_7Io(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    return-void
.end method
