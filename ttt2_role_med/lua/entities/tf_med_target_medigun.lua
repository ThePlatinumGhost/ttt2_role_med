if engine.ActiveGamemode( ) ~= "terrortown" then return end -- we need this (or we can have this) to prevent this file from loading if the gamemmode is not ttt, this is only needed here lua/autorun, in /terrortown/... is this not needed
AddCSLuaFile( ) -- adding this file for donwload, the rest is base entity stuff and set up for the medigun
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false

function ENT:Draw( )
end

function ENT:Initialize( )
    if SERVER then
        self:SetModel( "models/hunter/plates/plate.mdl" )
        self:SetMoveType( MOVETYPE_NONE )
        self:SetSolid( SOLID_NONE )
        self:PhysicsInit( SOLID_NONE )
        self:SetCollisionGroup( COLLISION_GROUP_NONE )
        self:DrawShadow( false )
        self:SetName( self:GetName( ) .. "_" .. self:EntIndex( ) )
        self:AddEFlags( EFL_FORCE_CHECK_TRANSMIT )
    end
end

function ENT:UpdateTransmitState( )
    return TRANSMIT_ALWAYS
end