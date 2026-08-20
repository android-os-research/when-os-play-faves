.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/o;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/o;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/o;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o;->$r8$lambda$eJBLcFSJHqlnLdkzjmyrpcq8_YA(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)V

    return-void
.end method
