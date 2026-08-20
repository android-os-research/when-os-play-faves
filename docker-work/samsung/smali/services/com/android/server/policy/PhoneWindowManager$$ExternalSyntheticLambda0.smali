.class public final synthetic Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->$r8$lambda$60xktEWPfmz688aGJuMuMUj4ww8(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method
