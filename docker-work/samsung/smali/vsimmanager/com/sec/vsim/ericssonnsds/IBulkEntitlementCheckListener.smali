.class public interface abstract Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener;
.super Ljava/lang/Object;
.source "IBulkEntitlementCheckListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener$Stub;,
        Lcom/sec/vsim/ericssonnsds/IBulkEntitlementCheckListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.IBulkEntitlementCheckListener"


# virtual methods
.method public abstract onServiceEntitlementStatusUpdated(Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
