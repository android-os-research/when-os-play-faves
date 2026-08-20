.class public final synthetic Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;->f$0:Z

    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->$r8$lambda$arfiXBEup7GlKSDpoc7B5JFFzBQ(Z)V

    return-void
.end method
