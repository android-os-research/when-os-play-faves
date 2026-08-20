.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/PolicyHandler;

.field public final synthetic f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/PolicyHandler;

    iput-object p2, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/PolicyHandler;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    invoke-static {v0, p0}, Lcom/android/server/chimera/PolicyHandler;->$r8$lambda$xpo7b-81SsQ5RCZkHo3jSxC-8cE(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V

    return-void
.end method
