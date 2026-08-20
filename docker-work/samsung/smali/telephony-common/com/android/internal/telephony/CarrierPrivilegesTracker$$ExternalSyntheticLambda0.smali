.class public final synthetic Lcom/android/internal/telephony/CarrierPrivilegesTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/IntArray;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/IntArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$$ExternalSyntheticLambda0;->f$0:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$$ExternalSyntheticLambda0;->f$0:Landroid/util/IntArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method
