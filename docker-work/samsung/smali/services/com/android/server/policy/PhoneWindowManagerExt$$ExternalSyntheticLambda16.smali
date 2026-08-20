.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->$r8$lambda$1Y7ypMn3CYXYxB1uUTFPBgiu-tc(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V

    return-void
.end method
