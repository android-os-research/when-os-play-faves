.class public final synthetic Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;->f$0:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;->f$0:Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Landroid/hardware/location/ContextHubInfo;

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->$r8$lambda$RgYKnGbgRWisJh3a6hKfyf6RHUM(Landroid/util/proto/ProtoOutputStream;Landroid/hardware/location/ContextHubInfo;)V

    return-void
.end method
