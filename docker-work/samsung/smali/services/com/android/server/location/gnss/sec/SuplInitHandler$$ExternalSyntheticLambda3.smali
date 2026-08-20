.class public final synthetic Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iput-object p2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->$r8$lambda$jyL9iPDBgAw95td7LQVeyL_B73o(Lcom/android/server/location/gnss/sec/SuplInitHandler;Landroid/content/Intent;)V

    return-void
.end method
