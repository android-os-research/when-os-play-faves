.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZIILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$1:Z

    iput p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$1:Z

    iget v2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$3:I

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/pm/UserManagerService;->$r8$lambda$AYubsZ0dSWXXQBS1l2prS4Gk6DA(Ljava/lang/String;ZIILjava/lang/String;)V

    return-void
.end method
