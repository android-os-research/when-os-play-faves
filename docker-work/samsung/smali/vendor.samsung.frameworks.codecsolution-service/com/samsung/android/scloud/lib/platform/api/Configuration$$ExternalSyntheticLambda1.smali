.class public final synthetic Lcom/samsung/android/scloud/lib/platform/api/Configuration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;

    check-cast p1, Landroid/content/pm/ProviderInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->lambda$isAvailable$1(Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method
