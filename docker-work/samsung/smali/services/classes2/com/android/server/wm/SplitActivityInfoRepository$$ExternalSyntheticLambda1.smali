.class public final synthetic Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/server/wm/SplitActivityInfoRepository;->$r8$lambda$0GBtqA7Y0g56o0hUux4CQ1SC11E(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V

    return-void
.end method
