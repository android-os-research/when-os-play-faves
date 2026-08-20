.class public final synthetic Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field public final synthetic blacklist f$3:Landroid/os/Message;

.field public final synthetic blacklist f$4:Landroid/telephony/data/DataProfile;

.field public final synthetic blacklist f$5:Z

.field public final synthetic blacklist f$6:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$2:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$3:Landroid/os/Message;

    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$4:Landroid/telephony/data/DataProfile;

    iput-boolean p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$5:Z

    iput-boolean p7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$6:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$2:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$3:Landroid/os/Message;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$4:Landroid/telephony/data/DataProfile;

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$5:Z

    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$$ExternalSyntheticLambda5;->f$6:Z

    move-object v7, p1

    check-cast v7, Ljava/lang/Integer;

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->$r8$lambda$yAGNOUh2zeSZIKWVG_6SJC1K00A(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Integer;)V

    return-void
.end method
