.class public abstract Lcom/gsma/services/rcs/RcsServiceRegistrationListener;
.super Ljava/lang/Object;
.source "RcsServiceRegistrationListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onServiceRegistered()V
.end method

.method public abstract onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
.end method
