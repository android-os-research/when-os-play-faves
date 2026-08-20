.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/autofill/Session;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/autofill/Session;

    check-cast p1, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Session;->$r8$lambda$F-zKv-BveSCb-AWDeFqK5sfZNUU(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
