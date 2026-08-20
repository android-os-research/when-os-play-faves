.class public final synthetic Lcom/samsung/android/mcf/common/DLog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/common/DLog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/common/DLog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/common/DLog;->$r8$lambda$fi_fhcpqYWvsZ3EDz6lQsZ-o5Ag(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method
