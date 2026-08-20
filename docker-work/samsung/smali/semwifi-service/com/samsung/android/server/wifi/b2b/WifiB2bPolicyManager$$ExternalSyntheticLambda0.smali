.class public final synthetic Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->$r8$lambda$TBnla94T4bM8AKv0RSRr8q57OmQ(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V

    return-void
.end method
