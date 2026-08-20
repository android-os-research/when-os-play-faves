.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentTasks;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentTasks;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/RecentTasks;

    iput p2, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/RecentTasks;

    iget p0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/RecentTasks;->$r8$lambda$tW_s_q0Rp8B9JNjFcBgC26O59A8(Lcom/android/server/wm/RecentTasks;ILjava/lang/String;)V

    return-void
.end method
