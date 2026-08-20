.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/Session;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->$r8$lambda$IUh3HGytfl9SGQTd7DkhlqSCXKk(Lcom/android/server/autofill/Session;)V

    return-void
.end method
