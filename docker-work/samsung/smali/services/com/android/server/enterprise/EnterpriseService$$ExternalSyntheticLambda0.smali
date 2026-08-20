.class public final synthetic Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IServiceCreator;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 2

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/EnterpriseService;->$r8$lambda$x8Tln4y79hpLWL5fbq9B-6jiM-k(Ljava/lang/String;Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
