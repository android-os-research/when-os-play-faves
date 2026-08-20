.class public final synthetic Lcom/android/internal/telephony/SemPhone$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/CommandException$Error;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CommandException$Error;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhone$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/CommandException$Error;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/SemPhone$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/CommandException$Error;

    check-cast p1, Landroid/os/Message;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemPhone;->$r8$lambda$7xILg6sNhtYYTNNc7Hnmht2gAXo(Lcom/android/internal/telephony/CommandException$Error;Landroid/os/Message;)V

    return-void
.end method
